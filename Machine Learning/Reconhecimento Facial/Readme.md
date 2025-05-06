## Reconhecimento Facial com Redes Neurais Densas (MLP) e MTCNN

Este repositório contém a implementação de dois modelos de reconhecimento baseados em redes neurais densas MLP, desenvolvidos com PyTorch:

- Reconhecimento de identidade facial

- Reconhecimento de expressões faciais (ex: feliz, neutro, bravo)

Os modelos são treinados sem o uso de redes convolucionais (CNNs) ou embeddings pré-treinados. A entrada consiste em vetores de pixels extraídos de imagens em tons de cinza, após o recorte automático dos rostos com MTCNN.

##  Visão Geral do Pipeline

1. **Carregamento de imagens organizadas em pastas**
   - data para rostos por pessoa
   - expressoes para rostos por emoção

2. **Detecção e recorte facial com MTCNN**
   - Detecção de rosto automático
   - Conversão RGB → Escala de Cinza (Grayscale)
   - Redimensionamento para 64×64 pixels

3. **Criação do Dataset Customizado**
   - Cada imagem é convertida em vetor (64×64 = 4096 entradas)
   - Labels são codificados com LabelEncoder

4. **Definição e Treinamento da MLP**
   - Treinamento com validação (80/20)
   - Early Stopping baseado na validação

5. **Salvamento do modelo e codificadores**
   - Pesos salvos como `.pth`
   - Codificadores salvos com `pickle`

**Estrutura das pastas**


Para reconhecimento facial:


data/

├── pessoa1/

│   ├── foto1.jpg

│   ├── foto2.jpg

├── pessoa2/

Para expressões faciais:


expressoes/

├── bravo/

│   ├── foto1.jpg

│   ├── foto2.jpg

├── neutro/


**Reconhecimento de Identidade Facial**

Melhor acurácia de validação: 78,57%

O modelo aprendeu rapidamente (100% de acurácia no treino a partir da 4ª época).

Indício de overfitting


**Reconhecimento de Expressões Faciais**

Melhor acurácia de validação: 55,56% 

Início com baixa acurácia (30%)
