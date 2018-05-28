package SemanticWeb::Schema::DanceGroup;

# ABSTRACT: A dance group&#x2014;for example

use Moo;

extends qw/ SemanticWeb::Schema::PerformingGroup /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A dance group&#x2014;for example, the Alvin Ailey Dance Theater or
Riverdance.




=cut


around json_ld_type => sub { return 'DanceGroup' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::PerformingGroup>

=cut

1;
