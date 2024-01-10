use utf8;

package SemanticWeb::Schema::frequency;

# ABSTRACT: How often the dose is taken, e.g. 'daily'.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'frequency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

How often the dose is taken, e.g. 'daily'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
