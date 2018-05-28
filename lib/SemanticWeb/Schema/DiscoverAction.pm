package SemanticWeb::Schema::DiscoverAction;

# ABSTRACT: The act of discovering/finding an object.

use Moo;

extends qw/ SemanticWeb::Schema::FindAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of discovering/finding an object.




=cut


around json_ld_type => sub { return 'DiscoverAction' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::FindAction>

=cut

1;
