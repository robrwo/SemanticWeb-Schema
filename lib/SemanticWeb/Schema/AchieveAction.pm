package SemanticWeb::Schema::AchieveAction;

# ABSTRACT: The act of accomplishing something via previous efforts

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of accomplishing something via previous efforts. It is an
instantaneous action rather than an ongoing process.




=cut


around json_ld_type => sub { return 'AchieveAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
