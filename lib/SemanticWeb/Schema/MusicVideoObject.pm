use utf8;

package SemanticWeb::Schema::MusicVideoObject;

# ABSTRACT: A music video file.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'MusicVideoObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A music video file.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
