package SemanticWeb::Schema::TaxiService;

# ABSTRACT: A service for a vehicle for hire with a driver for local travel

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A service for a vehicle for hire with a driver for local travel. Fares are
usually calculated based on distance traveled.




=cut


around json_ld_type => sub { return 'TaxiService' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
