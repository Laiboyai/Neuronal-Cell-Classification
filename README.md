# Neuronal-Cell-Classification
實驗目的: 本程式目的是將輸入影像中的神經元細胞進行分類，將死細胞以及活細胞個別分離出來，首先利用自適應閥值的方式將影像的背景提取出來，接著進行形態學影像處理，將細胞內部空洞部分填補起來，最後計算各個區域像素的總數來辨別細胞種類，整體程式架構是使用Matlab進行撰寫相關影像處理步驟。
## 影像處理步驟
* **Morphological Image Processing:** 
<br>在進行影像的形態學處理前，我先利用自適應閥值的方式將影像的背景提取出來，並且將背景的影像資訊從影像中剃除，這樣就能得到影像中完整的細胞資訊。
接著進行形態學影像處理，將細胞內部空洞部分填補起來，首先建構一個直線型的結構元素進行膨脹，接著再建構一個圓盤形的結構元素進行closing，經過這些步驟便能有效地將細胞內空洞補起來。<br>
![image](https://github.com/Laiboyai/Neuronal-Cell-Classification/blob/main/imgs/figure_1.PNG)<br>
* **Filter out image noise and dead cells:**
<br>在第二個部分，為了將影像的噪音以及死細胞從影像中移除，首先將影像中所有影像的區域標註起來計算各個區域pixel的總數。然而，我可以清楚地從影像中看出死細胞的pixel數量相較於其他的正常細胞而言是相對較少的，因此我設立一個閥值，當影像中各區域的pixel數量小時閥值時就將此區域的影像強度設為零。<br>
![image](https://github.com/Laiboyai/Neuronal-Cell-Classification/blob/main/imgs/figure_2.PNG)<br>
* **Extract neuronal cell boundaries**
再經過上述的兩個實驗步驟後，便可以清楚地將活細胞的邊界提取除出來，詳細的成果圖如下圖，由此我們可以明顯看出活細胞的邊界已經被清楚地提取出來。
<br>![image](https://github.com/Laiboyai/Neuronal-Cell-Classification/blob/main/output%20image/output_image_(3).jpg)
