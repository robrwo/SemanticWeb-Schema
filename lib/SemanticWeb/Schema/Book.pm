use utf8;

package SemanticWeb::Schema::Book;

# ABSTRACT: A book.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Book';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.0';

=encoding utf8

=head1 DESCRIPTION

A book.




=head1 ATTRIBUTES


=head2 C<abridged>



Indicates whether the book is an abridged edition.


A abridged should be one of the following types:

=over

=item C<Bool>

=back

=head2 C<_has_abridged>

A predicate for the L</abridged> attribute.

=cut

has abridged => (
    is        => 'rw',
    predicate => '_has_abridged',
    json_ld   => 'abridged',
);


=head2 C<book_edition>

C<bookEdition>

The edition of the book.


A book_edition should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_book_edition>

A predicate for the L</book_edition> attribute.

=cut

has book_edition => (
    is        => 'rw',
    predicate => '_has_book_edition',
    json_ld   => 'bookEdition',
);


=head2 C<book_format>

C<bookFormat>

The format of the book.


A book_format should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BookFormatType']>

=back

=head2 C<_has_book_format>

A predicate for the L</book_format> attribute.

=cut

has book_format => (
    is        => 'rw',
    predicate => '_has_book_format',
    json_ld   => 'bookFormat',
);


=head2 C<illustrator>



The illustrator of the book.


A illustrator should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_illustrator>

A predicate for the L</illustrator> attribute.

=cut

has illustrator => (
    is        => 'rw',
    predicate => '_has_illustrator',
    json_ld   => 'illustrator',
);


=head2 C<isbn>



The ISBN of the book.


A isbn should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_isbn>

A predicate for the L</isbn> attribute.

=cut

has isbn => (
    is        => 'rw',
    predicate => '_has_isbn',
    json_ld   => 'isbn',
);


=head2 C<number_of_pages>

C<numberOfPages>

The number of pages in the book.


A number_of_pages should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=head2 C<_has_number_of_pages>

A predicate for the L</number_of_pages> attribute.

=cut

has number_of_pages => (
    is        => 'rw',
    predicate => '_has_number_of_pages',
    json_ld   => 'numberOfPages',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
