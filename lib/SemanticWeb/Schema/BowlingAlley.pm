package SemanticWeb::Schema::BowlingAlley;

# ABSTRACT: A bowling alley.

use Moo;

extends qw/ SemanticWeb::Schema::SportsActivityLocation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A bowling alley.




=cut


around json_ld_type => sub { return 'BowlingAlley' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::SportsActivityLocation>

=cut

1;
