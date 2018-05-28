package SemanticWeb::Schema::Car;

# ABSTRACT: A car is a wheeled

use Moo;

extends qw/ SemanticWeb::Schema::Vehicle /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A car is a wheeled, self-powered motor vehicle used for transportation.




=cut


around json_ld_type => sub { return 'Car' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Vehicle>

=cut

1;
