package SemanticWeb::Schema::HowToTip;

# ABSTRACT: An explanation in the instructions for how to achieve a result

use Moo;

extends qw/ SemanticWeb::Schema::ListItem /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An explanation in the instructions for how to achieve a result. It provides
supplementary information about a technique, supply, author's preference,
etc. It can explain what could be done, or what should not be done, but
doesn't specify what should be done (see HowToDirection).




=cut


around json_ld_type => sub { return 'HowToTip' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::ListItem>

=cut

1;
