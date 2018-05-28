package SemanticWeb::Schema::RadioEpisode;

# ABSTRACT: A radio episode which can be part of a series or season.

use Moo;

extends qw/ SemanticWeb::Schema::Episode /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A radio episode which can be part of a series or season.




=cut


around json_ld_type => sub { return 'RadioEpisode' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Episode>

=cut

1;
