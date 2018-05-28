package SemanticWeb::Schema::HowToStep;

# ABSTRACT: A step in the instructions for how to achieve a result

use Moo;

extends qw/ SemanticWeb::Schema::ItemList /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A step in the instructions for how to achieve a result. It is an ordered
list with HowToDirection and/or HowToTip items.




=cut


around json_ld_type => sub { return 'HowToStep' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ItemList>

=cut

1;
