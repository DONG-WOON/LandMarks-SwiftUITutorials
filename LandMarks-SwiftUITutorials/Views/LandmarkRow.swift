//
//  LandmarkRow.swift
//  LandMarks-SwiftUITutorials
//
//  Created by 서동운 on 1/30/23.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

// domb: 여기서 "Missing argument for parameter" 빌드타임에러가 발생하는 이유는 위의 View에 선언한 변수를 제대로 초기화 해주지 않았기 때문이다.
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
                // landmarks는 전역변수라 여기서 접근가능
            LandmarkRow(landmark: landmarks[1])
                
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
