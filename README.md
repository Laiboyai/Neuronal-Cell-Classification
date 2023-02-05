# Neuronal-Cell-Classification
實驗目的: 本程式目的是將輸入影像中的神經元細胞進行分類，將死細胞以及活細胞個別分離出來，首先利用自適應閥值的方式將影像的背景提取出來，接著進行形態學影像處理，將細胞內部空洞部分填補起來，最後計算各個區域像素的總數來辨別細胞種類，整體程式架構是使用Matlab進行撰寫相關影像處理步驟。
## 影像處理步驟
* Morphological Image Processing:
在進行影像的形態學處理前，我先利用自適應閥值的方式將影像的背景提取出來，並且將背景的影像資訊從影像中剃除，這樣就能得到影像中完整的細胞資訊。
接著進行形態學影像處理，將細胞內部空洞部分填補起來，首先建構一個直線型的結構元素進行膨脹，接著再建構一個圓盤形的結構元素進行closing，經過這些步驟便能有效地將細胞內空洞補起來。
![GITHUB]
* Filter out image noise and dead cells:
* 