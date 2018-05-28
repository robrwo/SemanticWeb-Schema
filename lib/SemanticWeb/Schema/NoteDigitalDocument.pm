package SemanticWeb::Schema::NoteDigitalDocument;

# ABSTRACT: A file containing a note

use Moo;

extends qw/ SemanticWeb::Schema::DigitalDocument /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A file containing a note, primarily for the author.




=cut


around json_ld_type => sub { return 'NoteDigitalDocument' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::DigitalDocument>

=cut

1;
