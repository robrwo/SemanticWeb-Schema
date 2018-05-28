package SemanticWeb::Schema::AmusementPark;

# ABSTRACT: An amusement park.

use Moo;

extends qw/ SemanticWeb::Schema::EntertainmentBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An amusement park.




=cut


around json_ld_type => sub { return 'AmusementPark' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::EntertainmentBusiness>

=cut

1;
