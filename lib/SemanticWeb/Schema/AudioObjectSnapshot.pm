use utf8;

package SemanticWeb::Schema::AudioObjectSnapshot;

# ABSTRACT: A specific and exact (byte-for-byte) version of an [[AudioObject]]

use Moo;

extends qw/ SemanticWeb::Schema::AudioObject /;


use MooX::JSON_LD 'AudioObjectSnapshot';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific and exact (byte-for-byte) version of an L<SemanticWeb::Schema::AudioObject>. Two byte-for-byte identical files, for the purposes of this type, considered identical. If they have different embedded metadata the files will differ. Different external facts about the files, e.g. creator or dateCreated that aren't represented in their actual content, do not affect this notion of identity.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AudioObject>

=cut

1;
