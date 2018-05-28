package SemanticWeb::Schema::WebSite;

# ABSTRACT: A WebSite is a set of related web pages and other items typically served from a single web domain and accessible via URLs.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A WebSite is a set of related web pages and other items typically served
from a single web domain and accessible via URLs.




=head1 ATTRIBUTES


=head2 C<issn>



The International Standard Serial Number (ISSN) that identifies this serial
publication. You can repeat this property to identify different formats of,
or the linking ISSN (ISSN-L) for, this serial publication.


A issn should be one of the following types:

=over

=item C<Str>

=back

=cut

has issn => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'issn',
    json_ld_serializer => \&_serialize_issn,
);

sub _serialize_issn { $_[0]->_serializer('issn') }




around json_ld_type => sub { return 'WebSite' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'issn' => \&_serialize_issn,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
