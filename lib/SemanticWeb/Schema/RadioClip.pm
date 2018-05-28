package SemanticWeb::Schema::RadioClip;

# ABSTRACT: A short radio program or a segment/part of a radio program.

use Moo;

extends qw/ SemanticWeb::Schema::Clip /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A short radio program or a segment/part of a radio program.




=cut


around json_ld_type => sub { return 'RadioClip' };

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
