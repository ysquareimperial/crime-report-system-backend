import { SignUp,
    SignIn,
    verifyToken

} from  "../controllers/authentication"

module.exports  = (app) => {
    app.post('/signup', SignUp)
    app.post('/signin', SignIn)
    app.get('/verifyToken', verifyToken)
}