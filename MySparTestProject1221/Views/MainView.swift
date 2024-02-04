//
//  MainView.swift
//  MySparTestProject1221
//
//  Created by Akai on 4/2/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedOption = 0
    
    private let images = [
        ProductsModel(image: "product1"),
        ProductsModel(image: "product2"),
        ProductsModel(image: "product1"),
        ProductsModel(image: "product2"),
        ProductsModel(image: "product1"),
        ProductsModel(image: "product2")
    ]
    
    private let feedbackData = [
        FeedbackModel(name: "Александр В.", date: "7 мая 2023", ratings: [5, 4, 3, 2, 1], comment: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
        FeedbackModel(name: "Александр В.", date: "7 мая 2023", ratings: [5, 4, 3, 2, 1], comment: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
        FeedbackModel(name: "Александр В.", date: "7 мая 2023", ratings: [5, 4, 3, 2, 1], comment: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!"),
        FeedbackModel(name: "Александр В.", date: "7 мая 2023", ratings: [5, 4, 3, 2, 1], comment: "Хорошая добавка, мне очень понравилась! Хочу, чтобы все добавки были такими!")
    ]
    
    private let options = ["Шт", "Кг"]
    
    @State private var count = 1
    @State private var price = 120
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Button {
                    print("Back button clicked")
                } label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(Color.green)
                }
                
                Spacer()
                
                Button {
                    print("print button clicked")
                } label: {
                    Image(systemName: "doc.plaintext")
                        .foregroundColor(Color.green)
                }
                
                Button {
                    print("Share button clicked")
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(Color.green)
                }
                
                Button {
                    print("Favoutite button clicked")
                } label: {
                    Image(systemName: "heart")
                        .foregroundColor(Color.green)
                }
            }
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ZStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(images) { img in
                                    Image(img.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                }
                            }
                            
                        }
                        
                        VStack {
                            HStack {
                                Text("Цена по карте")
                                    .foregroundColor(Color.white)
                                    .padding(4)
                                    .background(Color.green)
                                    .cornerRadius(5)
                                Spacer()
                            }
                            
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .cornerRadius(10)
                    
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                        Text("4.9")
                        
                        Rectangle()
                            .frame(width: 1, height: 15)
                            .foregroundColor(Color.gray)
                        
                        Text("19 отзывов")
                            .foregroundColor(Color.gray)
                        
                        Spacer()
                        
                        Text("-5%")
                            .padding(4)
                            .foregroundColor(Color.white)
                            .background(Color.red)
                    }
                    
                    
                    
                    VStack(spacing: 10) {
                        
                        HStack {
                            Text("Добавка “Липа”\n к чаю 200 г")
                                .font(.title)
                            Spacer()
                        }
                        
                        HStack {
                            Image("flag")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 20, height: 20)
                                .cornerRadius(10)
                            
                            Text("Испания, Риоха")
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("Описание")
                                .fontWeight(.bold)
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов")
                            
                            Spacer()
                        }
                        
                        HStack {
                            Text("Основные характеристики")
                                .fontWeight(.bold)
                            
                            Spacer()
                        }
                        
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Производство")
                                Text("Энергетическая \n ценность, ккал/100 г")
                                Text("Жиры/100 г")
                                Text("Белки/100 г")
                                Text("Углеводы/100 г")
                            }
                            
                            Spacer()
                            
                            VStack {
                                Text(".................")
                                Text(".................")
                                Text(".................")
                                Text(".................")
                                Text(".................")
                            }
                            
                            Spacer()
                            
                            VStack(alignment: .trailing) {
                                Text("Россия, Краснодарский край")
                                Text("25 ккал, 105 кДж")
                                Text("0,1 г")
                                Text("1,3 г")
                                Text("3,3 г")
                            }
                        }
                        
                        HStack {
                            Text("Все характеристики")
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                            Spacer()
                        }
                        
                        HStack {
                            Text("Отзывы")
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Text("Все 152")
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                            
                            
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(feedbackData, id: \.self) { feedback in
                                    FeedbackCustomView(
                                        name: feedback.name,
                                        date: feedback.date,
                                        feedback: feedback.comment
                                        
                                    )
                                    .frame(width: 300, height: 200)
                                }
                            }
                        }
                        
                        CustomButton(buttonText: "Оставить отзыв", action: {
                            print("leave comment clicked")
                        })
                            .frame(height: 44)
                    }
                    
                    Picker("Выберите вариант", selection: $selectedOption) {
                        ForEach(0..<options.count) {
                            Text(self.options[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    HStack {
                        VStack {
                            Text("55.9 /кг")
                                .font(.title)
                                .fontWeight(.bold)
                            Text("199.0")
                                .foregroundColor(Color.gray)
                                .strikethrough(true, color: .black)
                        }
                        
                        Spacer()
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 100)
                                .fill(Color.green)
                                .frame(width: 200)
                            
                            HStack(spacing: 10) {
                                Button {
                                    count -= 1
                                    updatePrice()
                                } label: {
                                    Text("-")
                                        .foregroundColor(Color.white)
                                }
                                
                                VStack {
                                    Text("\(count) шт")
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
                                    
                                    Text("\(price) р")
                                        .foregroundColor(Color.white)
                                }
                                
                                Button {
                                    count += 1
                                    updatePrice()
                                } label: {
                                    Text("+")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        .frame(width: 200)
                    }
                }
            }
        }
        .padding(.horizontal, 16)
    }
    
    func updatePrice() {
        price = 120 * count
    }
}

#Preview {
    MainView()
}
