//
//  HoroscopeIconView.swift
//  astroroji
//
//  Created by Deniz Donmezer on 2022-04-21.
//

import SwiftUI

struct IconView: View {
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    Button {
                    print("aquarius")
                    } label : {
                    Image("aquarius")
                        .resizable()
                    .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                    print("pisces")
                    } label : {
                    Image("pisces")
                        .resizable()
                    .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                        print("aries")
                    } label: {
                        Image("aries")
                            .resizable()
                            .padding(.leading, -10.0)
                            .scaledToFit()
                    }
                }
            }
            HStack {
                ZStack {
                    Button {
                    print("taurus")
                    } label : {
                    Image("taurus")
                        .resizable()
                    .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                    print("gemini")
                    } label : {
                    Image("gemini")
                        .resizable()
                    .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                    print("cancer")
                    } label : {
                    Image("cancer")
                        .resizable()
                    .scaledToFit()
                    }
                }
            }
            HStack {
                ZStack {
                    Button {
                    print("leo")
                    } label : {
                    Image("leo")
                        .resizable()
                    .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                    print("virgo")
                    } label : {
                    Image("virgo")
                        .resizable()
                    .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                    print("libra")
                    } label : {
                    Image("libra")
                        .resizable()
                    .scaledToFit()
                    }
                }
            }
            HStack {
                ZStack {
                    Button {
                    print("scorpio")
                    } label : {
                    Image("scorpio")
                        .resizable()
                    .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                    print("sagittarius")
                    } label : {
                    Image("sagittarius")
                        .resizable()
                    .scaledToFit()
                    }
                }
                ZStack {
                    Button {
                    print("capricorn")
                    } label : {
                    Image("capricorn")
                        .resizable()
                    .scaledToFit()
                    }
                }
            }
        }
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
