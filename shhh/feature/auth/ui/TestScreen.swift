//
//  TestScreen.swift
//  shhh
//
//  Created by Mac on 21/5/25.
//

import SwiftUI

struct TestScreen: View {
    
    
    @State private var hoTen: String = ""
        @State private var tuoi: String = ""
        @State private var ketQua: String = ""

        var body: some View {
            VStack {
                Spacer()

                VStack(spacing: 15) {
                    Text("THỰC HÀNH 01")
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 140)
                        .overlay(
                            VStack(spacing: 15) {
                                TextField("Nhập Họ và Tên", text: $hoTen)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.horizontal)

                                TextField("Nhập Tuổi", text: $tuoi)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.horizontal)
                                    .keyboardType(.numberPad)
                            }
                            .padding(.vertical, 10)
                        )

                    Button(action: {
                        if let tuoiSo = Int(tuoi) {
                            switch tuoiSo {
                            case ..<2:
                                ketQua = "\(hoTen) là Em bé"
                            case 2...5:
                                ketQua = "\(hoTen) là Trẻ em"
                            case 6...65:
                                ketQua = "\(hoTen) là Người trẻ"
                            default:
                                ketQua = "\(hoTen) là Người già"
                            }
                        } else {
                            ketQua = "Vui lòng nhập tuổi hợp lệ"
                        }
                    }) {
                        Text("Kiểm tra")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }

                    Text(ketQua)
                        .font(.headline)
                        .foregroundColor(.green)
                        .padding(.top, 20)

                }
                .padding()

                Spacer()
            }
        }
}


#Preview {
    TestScreen()
}
