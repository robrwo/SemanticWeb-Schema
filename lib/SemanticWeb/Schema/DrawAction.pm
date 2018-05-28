package SemanticWeb::Schema::DrawAction;

# ABSTRACT: The act of producing a visual/graphical representation of an object

use Moo;

extends qw/ SemanticWeb::Schema::CreateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of producing a visual/graphical representation of an object,
typically with a pen/pencil and paper as instruments.




=cut


around json_ld_type => sub { return 'DrawAction' };

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
