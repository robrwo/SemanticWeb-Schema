use utf8;

package SemanticWeb::Schema::VideoObjectSnapshot;

# ABSTRACT: A specific and exact (byte-for-byte) version of a [[VideoObject]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::VideoObject /;


use MooX::JSON_LD 'VideoObjectSnapshot';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.1';

=encoding utf8

=head1 DESCRIPTION

A specific and exact (byte-for-byte) version of a L<SemanticWeb::Schema::VideoObject>. Two byte-for-byte identical files, for the purposes of this type, considered identical. If they have different embedded metadata the files will differ. Different external facts about the files, e.g. creator or dateCreated that aren't represented in their actual content, do not affect this notion of identity.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::VideoObject>

=cut

1;
