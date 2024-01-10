use utf8;

package SemanticWeb::Schema::unitCode;

# ABSTRACT: The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'unitCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The unit of measurement given using the UN/CEFACT Common Code (3
characters) or a URL. Other codes than the UN/CEFACT Common Code may be
used with a prefix followed by a colon.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
