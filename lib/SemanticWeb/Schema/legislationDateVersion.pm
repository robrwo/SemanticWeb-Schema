use utf8;

package SemanticWeb::Schema::legislationDateVersion;

# ABSTRACT: The point-in-time at which the provided description of the legislation is valid (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationDateVersion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The point-in-time at which the provided description of the legislation is
valid (e.g.: when looking at the law on the 2016-04-07 (= dateVersion), I
get the consolidation of 2015-04-12 of the "National Insurance
Contributions Act 2015")




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
