package SemanticWeb::Schema::Book;

# ABSTRACT: A book.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

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
    json_ld_serializer => \&_serialize_book_edition,
);

sub _serialize_book_edition { $_[0]->_serializer('book_edition') }


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
    json_ld_serializer => \&_serialize_book_format,
);

sub _serialize_book_format { $_[0]->_serializer('book_format') }


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
    json_ld_serializer => \&_serialize_illustrator,
);

sub _serialize_illustrator { $_[0]->_serializer('illustrator') }


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
    json_ld_serializer => \&_serialize_isbn,
);

sub _serialize_isbn { $_[0]->_serializer('isbn') }


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
    json_ld_serializer => \&_serialize_number_of_pages,
);

sub _serialize_number_of_pages { $_[0]->_serializer('number_of_pages') }




around json_ld_type => sub { return 'Book' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'bookEdition' => \&_serialize_book_edition,
       'bookFormat' => \&_serialize_book_format,
       'illustrator' => \&_serialize_illustrator,
       'isbn' => \&_serialize_isbn,
       'numberOfPages' => \&_serialize_number_of_pages,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
