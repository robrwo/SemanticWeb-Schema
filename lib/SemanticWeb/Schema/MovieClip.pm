package SemanticWeb::Schema::MovieClip;

# ABSTRACT: A short segment/part of a movie.

use Moo;

extends qw/ SemanticWeb::Schema::Clip /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A short segment/part of a movie.




=cut


around json_ld_type => sub { return 'MovieClip' };

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
