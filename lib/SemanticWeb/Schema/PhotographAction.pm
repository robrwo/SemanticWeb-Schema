package SemanticWeb::Schema::PhotographAction;

# ABSTRACT: The act of capturing still images of objects using a camera.

use Moo;

extends qw/ SemanticWeb::Schema::CreateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of capturing still images of objects using a camera.




=cut


around json_ld_type => sub { return 'PhotographAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreateAction>

=cut

1;
