use utf8;

package SemanticWeb::Schema::regionsAllowed;

# ABSTRACT: The regions where the media is allowed

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'regionsAllowed';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The regions where the media is allowed. If not specified, then it's assumed
to be allowed everywhere. Specify the countries in [ISO 3166
format](http://en.wikipedia.org/wiki/ISO_3166).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
