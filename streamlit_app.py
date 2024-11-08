import streamlit as st
from st_login_form import login_form
from st_supabase_connection import SupabaseConnection

with st.container():
    st.write("This is inside the container")

    conn_pick = st.selectbox(
        "Which connection would you like to use?",
        ("pg", "mysql", "sqlite", "supabase"),
    )

    if conn_pick == "supabase":
        if st.secrets.connections.supabase.SUPABASE_URL == "https://<myprojecturl>.supabase.co" \
            or st.secrets.connections.supabase.SUPABASE_KEY == "<mykey>":
            st.error("Please set the Supabase URL and Key in the .streamlit/secrets.toml file.")
            conn = None
        else:
            conn = st.connection(name="supabase", type=SupabaseConnection)
    else:
        conn = st.connection(conn_pick, type="sql")

    if conn is not None:
        login_form(
            connection=conn,
        user_databasename="test",
        user_schemaname=None,
        user_tablename="users_test",
    )

    # Create a dictionary of connection details (only if not using supabase)
    if conn_pick != "supabase":
        # First display the logo separately using st.image
        logo_url = ("https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/540px-Postgresql_elephant.svg.png" if conn_pick == "pg" 
                   else "https://upload.wikimedia.org/wikipedia/en/thumb/d/dd/MySQL_logo.svg/184px-MySQL_logo.svg.png" if conn_pick == "mysql" 
                   else "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/SQLite370.svg/1200px-SQLite370.svg.png")
        
        st.subheader("Connection Details")
        st.image(logo_url, width=200)  # Adjust width as needed
        
        # Then display the technical details in the table
        conn_details = {
            "Driver": conn.driver,
            "Engine": str(conn.engine),
            "Dialect": str(conn._instance.dialect)
        }
        st.table(conn_details)
    
    # Create a dictionary of session state values
    session_info = {
        "Authentication Status": st.session_state["authenticated"],
        "User Role": st.session_state["authenticated_role"],
        "Username": st.session_state["username"]
    }
    st.subheader("Session Information")
    st.table(session_info)

    if st.session_state["authenticated"] == True:
        st.balloons()

    if st.session_state["authenticated_role"] == "admin":
        # Show admin content
        pass
    elif st.session_state["authenticated_role"] == "user":
        # Show user content
        pass
