from flask import Flask, request, jsonify
from sklearn.linear_model import LinearRegression
import numpy as np

app = Flask(__name__)

# 간단한 선형회귀 모델 생성 및 훈련
X = np.array([[1], [2], [3], [4], [5]])
y = np.array([2, 4, 6, 8, 10])
model = LinearRegression().fit(X, y)

@app.route('/predict', methods=['POST'])
def predict():
    # JSON 요청에서 데이터를 받아옴
    data = request.get_json(force=True)
    prediction = model.predict([[data['input']]])
    return jsonify({'prediction': prediction[0]})

if __name__ == '__main__':
    app.run(debug=True)
