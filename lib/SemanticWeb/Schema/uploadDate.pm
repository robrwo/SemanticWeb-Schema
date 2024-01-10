use utf8;

package SemanticWeb::Schema::uploadDate;

# ABSTRACT: Date (including time if available) when this media object was uploaded to this site.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'uploadDate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Date (including time if available) when this media object was uploaded to
this site.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
