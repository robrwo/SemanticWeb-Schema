use utf8;

package SemanticWeb::Schema::spatialCoverage;

# ABSTRACT: The spatialCoverage of a CreativeWork indicates the place(s) which are the focus of the content

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'spatialCoverage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The spatialCoverage of a CreativeWork indicates the place(s) which are the
focus of the content. It is a subproperty of contentLocation intended
primarily for more technical and detailed materials. For example with a
Dataset, it indicates areas that the dataset describes: a dataset of New
York weather would have spatialCoverage which was the place: the state of
New York.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
