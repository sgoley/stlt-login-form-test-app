import streamlit as st
from st_login_form import login_form

with st.container():
    st.write("This is inside the container")

    conn_pick = st.selectbox(
        "Which connection would you like to use?",
        ("pg", "mysql", "sqlite", "supabase"),
    )

    conn = st.connection(conn_pick, type='sql')
    conn.driver
    conn.engine
    conn._instance.dialect
    
    result = conn.query("select 1+1;")
    result

    login_form(connection=conn, 
               user_databasename="test",
               user_schemaname=None,
               user_tablename="users_test")