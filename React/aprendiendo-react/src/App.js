import { useState } from 'react';


export default function MyApp(){
  // Esta parte del codigo puede ir en cada boton para que sea independiente
  const [count, setCount] = useState(0);

  function handleClick() {
    setCount(count + 1);
  }
  return (
    <div>
      <h1>Es lo que aprendi hoy de React</h1>
      <h3>Poner un boton</h3>
      <MyButton/>
      <h3>Poner una imagen desde una url</h3>
      <Profile/>
      <h3>Usar condicionales y creacion de listas</h3>
      <ShoppingList/>
      <h3>Boton con condicional</h3>
      <ButtonConditional/>
      <h3>Boton con contador</h3>
      <ButtonContador count={count} onClick={handleClick}/>
      <ButtonContador count={count} onClick={handleClick}/>
      
    </div>
  )
}

function MyButton(){
  return (
    <button>Soy un boton</button>
  )
}

function ButtonConditional(){
  function handleCick(){
    alert('Me puchaste!')
  }
  return(
    <button onClick={handleCick}>
      Puchame
    </button>
  )
}

// Solo pasamos el parametro si lo quequeremos usar no esta ne la fucnion
function ButtonContador({count, onClick}){
  /*const [count,setCount]= useState(0);
  function handleCick(){
    setCount(count +1);
    alert('Estoy contando las veces que me puchas!')
  }*/
  return(
    <button onClick={onClick}>
      Me has puchado {count} veces
    </button>
  )
}
const user = {
  name: 'Hedy Lamarr',
  imageUrl: 'https://i.imgur.com/yXOvdOSs.jpg',
  imageSize: 90,
};

function Profile() {
  return (
    <>
      <h1>{user.name}</h1>
      <img
        className="avatar"
        src={user.imageUrl}
        alt={'Foto de ' + user.name}
        style={{
          width: user.imageSize,
          height: user.imageSize
        }}
      />
    </>
  );
}

const products = [
  { title: 'Col', isFruit: false, id: 1 },
  { title: 'Ajo', isFruit: false, id: 2 },
  { title: 'Manzana', isFruit: true, id: 3 },
  { title: 'Platano', isFruit: true, id: 4},
];

function ShoppingList() {
  const listItems = products.map(product =>
    <li
      key={product.id}
      style={{
        color: product.isFruit ? 'magenta' : 'darkgreen'
      }}
    >
      {product.title}
    </li>
  );

  return (
    <ul>{listItems}</ul>
  );
}


