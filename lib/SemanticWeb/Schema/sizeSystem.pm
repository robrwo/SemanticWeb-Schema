use utf8;

package SemanticWeb::Schema::sizeSystem;

# ABSTRACT: The size system used to identify a product's size

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'sizeSystem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The size system used to identify a product's size. Typically either a
standard (for example, "GS1" or "ISO-EN13402"), country code (for example
"US" or "JP"), or a measuring system (for example "Metric" or "Imperial").




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
