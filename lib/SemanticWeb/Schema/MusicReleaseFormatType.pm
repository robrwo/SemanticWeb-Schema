package SemanticWeb::Schema::MusicReleaseFormatType;

# ABSTRACT: Format of this release (the type of recording media used

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Format of this release (the type of recording media used, ie. compact disc,
digital media, LP, etc.).




=cut


around json_ld_type => sub { return 'MusicReleaseFormatType' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
