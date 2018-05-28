package SemanticWeb::Schema::HowToTool;

# ABSTRACT: A tool used (but not consumed) when performing instructions for how to achieve a result.

use Moo;

extends qw/ SemanticWeb::Schema::HowToItem /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A tool used (but not consumed) when performing instructions for how to
achieve a result.




=cut


around json_ld_type => sub { return 'HowToTool' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::HowToItem>

=cut

1;
