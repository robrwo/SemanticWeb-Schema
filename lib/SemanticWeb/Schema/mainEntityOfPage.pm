use utf8;

package SemanticWeb::Schema::mainEntityOfPage;

# ABSTRACT: Indicates a page (or other CreativeWork) for which this thing is the main entity being described

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'mainEntityOfPage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a page (or other CreativeWork) for which this thing is the main
entity being described. See [background
notes](/docs/datamodel.html#mainEntityBackground) for details.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
