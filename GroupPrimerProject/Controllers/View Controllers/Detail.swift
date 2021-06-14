//
//  Detail.swift
//  GroupPrimerProject
//
//  Created by James Phillips on 6/14/21.
//


import SwiftUI

struct Detail: View {
    var person: Person
    var people  = PersonController.shared.people
    var peopleIndex: Int {
        people.firstIndex(where: {$0.id == person.id})!
    }
    var body: some View {
        ScrollView{
            Spacer(minLength: 300)
            CircleImage(image: person.image )
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack{
                    Text(person.name)
                        .font(.title)
                        .foregroundColor(.primary)
                }
                HStack{
                    Text("Age: \(person.age)")
                    Text("State: \(person.location)")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(person.name)")
                    .font(.title2)
                    .padding()
                Text("\(person.bio)")
            }
            .padding()
        }
        .navigationTitle(person.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CView_Previews: PreviewProvider {
    static var previews: some View {
        CView(person: shared.people[0] )
    }
}

