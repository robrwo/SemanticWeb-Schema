package SemanticWeb::Schema::VideoGameClip;

# ABSTRACT: A short segment/part of a video game.

use Moo;

extends qw/ SemanticWeb::Schema::Clip /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A short segment/part of a video game.




=cut


around json_ld_type => sub { return 'VideoGameClip' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Clip>

=cut

1;
