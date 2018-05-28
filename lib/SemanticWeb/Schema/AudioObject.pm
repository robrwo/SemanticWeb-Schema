package SemanticWeb::Schema::AudioObject;

# ABSTRACT: An audio file.

use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'AudioObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An audio file.




=head1 ATTRIBUTES


=head2 C<transcript>



If this MediaObject is an AudioObject or VideoObject, the transcript of
that object.


A transcript should be one of the following types:

=over

=item C<Str>

=back

=cut

has transcript => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'transcript',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
