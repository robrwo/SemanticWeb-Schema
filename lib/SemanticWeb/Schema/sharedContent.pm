use utf8;

package SemanticWeb::Schema::sharedContent;

# ABSTRACT: A CreativeWork such as an image

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sharedContent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A CreativeWork such as an image, video, or audio clip shared as part of
this posting.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
