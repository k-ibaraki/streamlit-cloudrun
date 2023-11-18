import streamlit as st
import pandas as pd
import numpy as np

# Markdownで記述
st.markdown("""
    # Hello
    world!!!
""")

# グラフを書く
df: pd.DataFrame = pd.DataFrame(
    np.random.randn(30, 3),
    columns=["x", "y", "z"]
)
st.line_chart(df)
