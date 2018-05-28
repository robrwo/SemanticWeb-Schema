package SemanticWeb::Schema::MusicVideoObject;

# ABSTRACT: A music video file.

use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A music video file.




=cut


around json_ld_type => sub { return 'MusicVideoObject' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
