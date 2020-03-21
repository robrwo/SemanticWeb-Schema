use utf8;

package SemanticWeb::Schema::3DModel;

# ABSTRACT: A 3D model represents some kind of 3D content

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD '3DModel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.0';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A 3D model represents some kind of 3D content, which may have <a
class="localLink" href="http://schema.org/encoding">encoding</a>s in one or
more <a class="localLink"
href="http://schema.org/MediaObject">MediaObject</a>s. Many 3D formats are
available (e.g. see <a
href="https://en.wikipedia.org/wiki/Category:3D_graphics_file_formats">Wiki
pedia</a>); specific encoding formats can be represented using the <a
class="localLink"
href="http://schema.org/encodingFormat">encodingFormat</a> property applied
to the relevant <a class="localLink"
href="http://schema.org/MediaObject">MediaObject</a>. For the case of a
single file published after Zip compression, the convention of appending
'+zip' to the <a class="localLink"
href="http://schema.org/encodingFormat">encodingFormat</a> can be used.
Geospatial, AR/VR, artistic/animation, gaming, engineering and scientific
content can all be represented using <a class="localLink"
href="http://schema.org/3DModel">3DModel</a>.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
