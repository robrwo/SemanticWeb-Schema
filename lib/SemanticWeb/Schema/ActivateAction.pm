package SemanticWeb::Schema::ActivateAction;

# ABSTRACT: The act of starting or activating a device or application (e

use Moo;

extends qw/ SemanticWeb::Schema::ControlAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of starting or activating a device or application (e.g. starting a
timer or turning on a flashlight).




=cut


around json_ld_type => sub { return 'ActivateAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ControlAction>

=cut

1;
