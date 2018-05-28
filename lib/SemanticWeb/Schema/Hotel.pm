package SemanticWeb::Schema::Hotel;

# ABSTRACT: A hotel is an establishment that provides lodging paid on a short-term basis (Source: Wikipedia

use Moo;

extends qw/ SemanticWeb::Schema::LodgingBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A hotel is an establishment that provides lodging paid on a short-term
basis (Source: Wikipedia, the free encyclopedia, see
http://en.wikipedia.org/wiki/Hotel). <br /><br /> See also the <a
href="/docs/hotels.html">dedicated document on the use of schema.org for
marking up hotels and other forms of accommodations</a>.

=end html




=cut


around json_ld_type => sub { return 'Hotel' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::LodgingBusiness>

=cut

1;
