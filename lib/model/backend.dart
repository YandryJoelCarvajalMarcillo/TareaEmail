import 'package:flutter/material.dart';
import 'email.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of emails. Hardcoded here for testing purposes.
  final _emails = [
    Email(
      id: 631,
      from: 'functional@programming.com',
      subject: 'Functional programming',
      dateTime: DateTime(2020, 10, 03, 19, 43),
      body:
          'In computer science, functional programming is a programming paradigm where programs are constructed by applying and composing functions. It is a declarative programming paradigm in which function definitions are trees of expressions that each return a value, rather than a sequence of imperative statements which change the state of the program.', 
      imageUrl: 'https://static1-es.millenium.gg/articles/0/30/58/0/@/141079-cp-orig-1-article_image_t-1.jpeg',
    ),
    Email(
      id: 522,
      from: 'declarative@programming.com',
      subject: 'Declarative programming',
      dateTime: DateTime(2020, 10, 07, 03, 05),
      body:
          'Many languages that apply this style attempt to minimize or eliminate side effects by describing what the program must accomplish in terms of the problem domain, rather than describe how to accomplish it as a sequence of the programming language primitives (the how being left up to the language\'s implementation). This is in contrast with imperative programming, which implements algorithms in explicit steps.',
      imageUrl: 'https://i.blogs.es/7fcfef/cover-desktop-1x-e6d6aaa1/1366_2000.jpeg',
    ),
    Email(
      id: 963,
      from: 'imperative@programming.com',
      subject: 'Imperative programming',
      dateTime: DateTime(2020, 10, 09, 13, 48),
      body:
          'In computer science, imperative programming is a programming paradigm that uses statements that change a program\'s state. In much the same way that the imperative mood in natural languages expresses commands, an imperative program consists of commands for the computer to perform. Imperative programming focuses on describing how a program operates.',
      imageUrl: 'https://fotomanias.com.ar/wp-content/uploads/2019/03/foto-carnet-fondo-celeste.jpg',
    ),
    Email(
      id: 164,
      read: true,
      from: 'machine@code.com',
      subject: 'Machine code',
      dateTime: DateTime(2020, 10, 11, 16, 14),
      body:
          'In computer programming, machine code, consisting of machine language instructions, is a low-level programming language used to directly control a computer\'s central processing unit (CPU). Each instruction causes the CPU to perform a very specific task, such as a load, a store, a jump, or an arithmetic logic unit (ALU) operation on one or more units of data in the CPU\'s registers or memory.',
      imageUrl: 'https://karlacsphotography.com/wp-content/uploads/2020/04/MG_3442_1.jpg',
    ),
    Email(
      id: 835,
      from: 'high-level@programminglanguage.com',
      subject: 'High-level programming language',
      dateTime: DateTime(2020, 10, 13, 20, 25),
      body:
          'In computer science, a high-level programming language is a programming language with strong abstraction from the details of the computer. In contrast to low-level programming languages, it may use natural language elements, be easier to use, or may automate (or even hide entirely) significant areas of computing systems (e.g. memory management), making the process of developing a program simpler and more understandable than when using a lower-level language. The amount of abstraction provided defines how "high-level" a programming language is.',
      imageUrl: 'http://3.bp.blogspot.com/-aAsPE0P5i3s/TuPMIjbC4JI/AAAAAAAAAEM/ZAcSRyvlRnU/s1600/para_curriculum.jpg',
    ),
    Email(
      id: 966,
      from: 'lexical@scope.com',
      subject: 'Lexical scope',
      dateTime: DateTime(2020, 10, 14, 23, 59),
      body:
          'For example, Pascal is lexically scoped. Consider the Pascal program fragment at right. The variable I is visible at all points, because it is never hidden by another variable of the same name. The char variable K is visible only in the main program because it is hidden by the real variable K visible in procedure B and C only. Variable L is also visible only in procedure B and C but it does not hide any other variable. Variable M is only visible in procedure C and therefore not accessible either from procedure B or the main program. Also, procedure C is visible only in procedure B and can therefore not be called from the main program.',
      imageUrl: 'https://media.v2.siweb.es/uploaded_thumb_seo/409d16e4bfdd9d56bbcdede012883dd9/-Ct_72472233.jpg',
    ),
    Email(
      id: 237,
      from: 'nested@function.com',
      subject: 'Nested function',
      dateTime: DateTime(2020, 10, 16, 21, 09),
      body:
          'In computer programming, a nested function (or nested procedure or subroutine) is a function which is defined within another function, the enclosing function. Due to simple recursive scope rules, a nested function is itself invisible outside of its immediately enclosing function, but can see (access) all local objects (data, functions, types, etc.) of its immediately enclosing function as well as of any function(s) which, in turn, encloses that function. The nesting is theoretically possible to unlimited depth, although only a few levels are normally used in practical programs.',
      imageUrl: 'https://paisdigital.s3.amazonaws.com/wp-content/uploads/2019/04/10042527/Foto-tama%C3%B1o-pasaporte.jpg',
    ),
    Email(
      id: 308,
      from: 'dynamic@programminglanguage.com',
      subject: 'Dynamic programming language',
      dateTime: DateTime(2020, 10, 18, 18, 10),
      body:
          'In computer science, a dynamic programming language is a class of high-level programming languages, which at runtime execute many common programming behaviours that static programming languages perform during compilation. These behaviors could include an extension of the program, by adding new code, by extending objects and definitions, or by modifying the type system. Although similar behaviors can be emulated in nearly any language, with varying degrees of difficulty, complexity and performance costs, dynamic languages provide direct tools to make use of them. Many of these features were first implemented as native features in the Lisp programming language.',
      imageUrl: 'https://www.dzoom.org.es/wp-content/uploads/2022/09/autorretrato-fotos-fondo-blanco-retrato-734x489.jpg',
    ),
    Email(
      id: 759,
      from: 'common@lisp.com',
      subject: 'Common Lisp',
      dateTime: DateTime(2020, 10, 22, 21, 21),
      body:
          'The Common Lisp language was developed as a standardized and improved successor of Maclisp. By the early 1980s several groups were already at work on diverse successors to MacLisp: Lisp Machine Lisp (aka ZetaLisp), Spice Lisp, NIL and S-1 Lisp. Common Lisp sought to unify, standardise, and extend the features of these MacLisp dialects. Common Lisp is not an implementation, but rather a language specification.',
      imageUrl: 'https://es.visafoto.com/img/source03.jpg',
    ),
    Email(
      id: 810,
      from: 'object-oriented@programming.com',
      subject: 'Object-oriented programming',
      dateTime: DateTime(2020, 10, 26, 08, 54),
      body:
          'Object-oriented programming (OOP) is a programming paradigm based on the concept of "objects", which can contain data and code: data in the form of fields (often known as attributes or properties), and code, in the form of procedures (often known as methods).',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Foto_carnet_ClaraGD.jpg',
    ),
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Email> getEmails() {
    return _emails;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = _emails.indexWhere((email) => email.id == id);
    _emails[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteEmail(int id) {
    _emails.removeWhere((email) => email.id == id);
  }
}
