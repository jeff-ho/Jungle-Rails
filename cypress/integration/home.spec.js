


describe('Jungle feature spec', () => {
  beforeEach(() => {
    cy.request('/cypress_rails_reset_state')
    cy.visit("http://localhost:3000/")
    
  })
  
  it("goes to home page", () => {

  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
})