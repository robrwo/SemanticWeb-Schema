package SemanticWeb::Schema::RadioSeason;

# ABSTRACT: Season dedicated to radio broadcast and associated online delivery.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeason /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Season dedicated to radio broadcast and associated online delivery.




=cut


around json_ld_type => sub { return 'RadioSeason' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeason>

=cut

1;
