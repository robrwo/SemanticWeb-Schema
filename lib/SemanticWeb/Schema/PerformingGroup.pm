package SemanticWeb::Schema::PerformingGroup;

# ABSTRACT: A performance group

use Moo;

extends qw/ SemanticWeb::Schema::Organization /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A performance group, such as a band, an orchestra, or a circus.




=cut


around json_ld_type => sub { return 'PerformingGroup' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
