use utf8;

package SemanticWeb::Schema::Book;

# ABSTRACT: A book.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Book';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.5';

=encoding utf8

=head1 DESCRIPTION

A book.




=head1 ATTRIBUTES


=head2 C<book_edition>

C<bookEdition>

The edition of the book.


A book_edition should be one of the following types:

=over

=item C<Str>

=back

=cut

has book_edition => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bookEdition',
);


=head2 C<book_format>

C<bookFormat>

The format of the book.


A book_format should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BookFormatType']>

=back

=cut

has book_format => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bookFormat',
);


=head2 C<illustrator>



The illustrator of the book.


A illustrator should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has illustrator => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'illustrator',
);


=head2 C<isbn>



The ISBN of the book.


A isbn should be one of the following types:

=over

=item C<Str>

=back

=cut

has isbn => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isbn',
);


=head2 C<number_of_pages>

C<numberOfPages>

The number of pages in the book.


A number_of_pages should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Integer']>

=back

=cut

has number_of_pages => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'numberOfPages',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
