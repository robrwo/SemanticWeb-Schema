package SemanticWeb::Schema::DriveWheelConfigurationValue;

# ABSTRACT: A value indicating which roadwheels will receive torque.

use Moo;

extends qw/ SemanticWeb::Schema::QualitativeValue /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A value indicating which roadwheels will receive torque.




=cut


around json_ld_type => sub { return 'DriveWheelConfigurationValue' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::QualitativeValue>

=cut

1;
