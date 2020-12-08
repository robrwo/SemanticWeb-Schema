use utf8;

package SemanticWeb::Schema::3DModel;

# ABSTRACT: A 3D model represents some kind of 3D content

use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD '3DModel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A 3D model represents some kind of 3D content, which may have [[encoding]]s
in one or more [[MediaObject]]s. Many 3D formats are available (e.g. see
[Wikipedia](https://en.wikipedia.org/wiki/Category:3D_graphics_file_formats
)); specific encoding formats can be represented using the
[[encodingFormat]] property applied to the relevant [[MediaObject]]. For
the case of a single file published after Zip compression, the convention
of appending '+zip' to the [[encodingFormat]] can be used. Geospatial,
AR/VR, artistic/animation, gaming, engineering and scientific content can
all be represented using [[3DModel]].




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
