use utf8;

package SemanticWeb::Schema::thumbnailUrl;

# ABSTRACT: A thumbnail image relevant to the Thing.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'thumbnailUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A thumbnail image relevant to the Thing.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
